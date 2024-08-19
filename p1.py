# app.py
import requests

def fetch_data(url):
    try:
        response = requests.get(url)
        response.raise_for_status()  # Kiểm tra lỗi HTTP
        data = response.json()
        return data
    except requests.RequestException as e:
        print(f"Error fetching data: {e}")
        return None

def main():
    url = "https://api.github.com/users/octocat"
    data = fetch_data(url)
    if data:
        print(f"User: {data['login']}")
        print(f"ID: {data['id']}")
        print(f"Public Repos: {data['public_repos']}")

if __name__ == "__main__":
    main()
